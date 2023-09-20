(declare-fun y1_ack!338 () (_ BitVec 64))
(declare-fun x1_ack!341 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!340 () (_ BitVec 64))
(declare-fun x2_ack!339 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!341))
        (fp.abs ((_ to_fp 11 53) y1_ack!338))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!338))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!341))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!341)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!341))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fd62e42fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!341)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fd62e42fefa39ef))
         (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!341))))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!341) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!339))
             (fp.abs ((_ to_fp 11 53) y2_ack!340)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!339) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!341)))
                   ((_ to_fp 11 53) #x3fd62e42fefa39ef)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!340)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x7ff0000000000001) a!2))))

(check-sat)
(exit)
