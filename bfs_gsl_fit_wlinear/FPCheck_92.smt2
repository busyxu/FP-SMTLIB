(declare-fun w0_ack!284 () (_ BitVec 64))
(declare-fun w1_ack!281 () (_ BitVec 64))
(declare-fun w2_ack!282 () (_ BitVec 64))
(declare-fun w3_ack!283 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!284) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!281) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!282) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!283) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!284) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  w0_ack!284
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!284))))

(check-sat)
(exit)
