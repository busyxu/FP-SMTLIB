(declare-fun b_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!30)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!30)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!30)))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4048000000000000)
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!30))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4026000000000000))
    #x4014000000000000)))

(check-sat)
(exit)
