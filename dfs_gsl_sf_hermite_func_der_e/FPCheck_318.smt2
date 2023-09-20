(declare-fun a_ack!2049 () (_ BitVec 32))
(declare-fun b_ack!2047 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2048 () (_ BitVec 64))
(assert (not (bvslt a_ack!2049 #x00000000)))
(assert (not (bvslt b_ack!2047 #x00000000)))
(assert (not (= #x00000000 a_ack!2049)))
(assert (= #x00000001 a_ack!2049))
(assert (not (bvsle #x00000002 b_ack!2047)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2048)
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
