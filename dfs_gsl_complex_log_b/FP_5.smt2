(declare-fun y1_ack!154 () (_ BitVec 64))
(declare-fun x1_ack!157 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!156 () (_ BitVec 64))
(declare-fun x2_ack!155 () (_ BitVec 64))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!157))
        (fp.abs ((_ to_fp 11 53) y1_ack!154))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!154))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!157))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!157)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!157))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!157)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!157))))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!155))
        (fp.abs ((_ to_fp 11 53) y2_ack!156))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!156))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!155))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x2_ack!155)))
                   ((_ to_fp 11 53) #x3d7fe246ea1fc037))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x2_ack!155))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3d7fe246ea1fc037)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x2_ack!155)))
                   ((_ to_fp 11 53) #x3d7fe246ea1fc037))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3d7fe246ea1fc037))
         (CF_log (fp.abs ((_ to_fp 11 53) x2_ack!155))))))

(check-sat)
(exit)
