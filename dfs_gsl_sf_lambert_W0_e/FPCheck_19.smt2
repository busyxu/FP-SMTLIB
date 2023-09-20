(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!28)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!28)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!28)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!28)
                           (CF_log (CF_log a_ack!28)))
                   (CF_log (CF_log a_ack!28)))))
  (fp.eq a!1 (CF_log a_ack!28))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log a_ack!28)
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!28)
                           (CF_log (CF_log a_ack!28))))))
  (fp.eq a!1 (CF_log (CF_log a_ack!28)))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!28)
                           (CF_log (CF_log a_ack!28))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!28)
                           (CF_log (CF_log a_ack!28)))
                   a!1)))
  (FPCHECK_FSUB_ACCURACY a!2 a_ack!28))))

(check-sat)
(exit)
