(declare-fun b_ack!147 () (_ BitVec 32))
(declare-fun a_ack!149 () (_ BitVec 32))
(declare-fun c_ack!148 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!147 #x00000000)))
(assert (not (bvslt a_ack!149 #x00000000)))
(assert (not (= #x00000000 b_ack!147)))
(assert (not (= #x00000001 b_ack!147)))
(assert (= #x00000000 a_ack!149))
(assert (not (bvslt b_ack!147 #x00000000)))
(assert (not (= #x00000000 b_ack!147)))
(assert (not (= #x00000001 b_ack!147)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!148) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!148))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 b_ack!147))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!148))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!148)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!148))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!148))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
