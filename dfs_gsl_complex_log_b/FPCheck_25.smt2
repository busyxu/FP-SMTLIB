(declare-fun y1_ack!194 () (_ BitVec 64))
(declare-fun x1_ack!197 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!196 () (_ BitVec 64))
(declare-fun x2_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!197))
        (fp.abs ((_ to_fp 11 53) y1_ack!194))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!194))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!197))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!197)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!197))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!197)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!197))))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!195))
             (fp.abs ((_ to_fp 11 53) y2_ack!196)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x2_ack!195))
  (fp.abs ((_ to_fp 11 53) y2_ack!196))))

(check-sat)
(exit)
