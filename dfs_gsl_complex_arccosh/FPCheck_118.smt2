(declare-fun y_ack!401 () (_ BitVec 64))
(declare-fun x_ack!402 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!401) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!401)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!401))
                           (fp.abs ((_ to_fp 11 53) y_ack!401)))
                   (fp.abs ((_ to_fp 11 53) y_ack!401)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!401)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!401)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!401))
                           (fp.abs ((_ to_fp 11 53) y_ack!401)))
                   (fp.abs ((_ to_fp 11 53) y_ack!401)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!401)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!402))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!402))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) x_ack!402)))))

(check-sat)
(exit)
