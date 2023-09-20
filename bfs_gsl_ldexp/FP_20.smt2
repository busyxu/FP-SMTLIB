(declare-fun x_ack!356 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 11 53) x_ack!356)))
               (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!356))
                      ((_ to_fp 11 53) #x7ff0000000000000)))))
  (not a!1)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!356))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!356))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!356)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  (CF_log (fp.abs ((_ to_fp 11 53) x_ack!356))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!356)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!356)))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!356)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe62e42fefa39ef)))))

(check-sat)
(exit)
