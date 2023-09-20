(declare-fun y_ack!50 () (_ BitVec 64))
(declare-fun x_ack!51 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!51)) (fp.abs ((_ to_fp 11 53) y_ack!50))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y_ack!50))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!51))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!51)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!51))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x_ack!51)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x_ack!51))))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
