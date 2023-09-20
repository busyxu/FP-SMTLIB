(declare-fun d_ack!118 () (_ BitVec 64))
(declare-fun b_ack!117 () (_ BitVec 32))
(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun c_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!118) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!117)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!120) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!119)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x40852429b6c30b05
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!119)
                  ((_ to_fp 11 53) c_ack!119)))))

(check-sat)
(exit)
