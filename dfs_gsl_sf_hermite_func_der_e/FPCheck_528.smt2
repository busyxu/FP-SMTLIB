(declare-fun a_ack!3163 () (_ BitVec 32))
(declare-fun b_ack!3161 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!3162 () (_ BitVec 64))
(assert (not (bvslt a_ack!3163 #x00000000)))
(assert (not (bvslt b_ack!3161 #x00000000)))
(assert (not (= #x00000000 a_ack!3163)))
(assert (= #x00000001 a_ack!3163))
(assert (not (bvsle #x00000002 b_ack!3161)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbfe0000000000000)
                  ((_ to_fp 11 53) c_ack!3162))
          ((_ to_fp 11 53) c_ack!3162))
  #x0000000000000000))

(check-sat)
(exit)
