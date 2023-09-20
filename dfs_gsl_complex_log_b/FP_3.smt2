(declare-fun y1_ack!82 () (_ BitVec 64))
(declare-fun x1_ack!85 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!84 () (_ BitVec 64))
(declare-fun x2_ack!83 () (_ BitVec 64))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!85))
        (fp.abs ((_ to_fp 11 53) y1_ack!82))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!82))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!85))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!85)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!85))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!85)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!85))))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!85) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!83))
        (fp.abs ((_ to_fp 11 53) y2_ack!84))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!84))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!83))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
