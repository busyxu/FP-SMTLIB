(declare-fun a_ack!1361 () (_ BitVec 64))
(declare-fun b_ack!1360 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1361) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1361)
                     ((_ to_fp 11 53) b_ack!1360))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1360))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1361))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1361) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1361)
                       ((_ to_fp 11 53) b_ack!1360))
               ((_ to_fp 11 53) a_ack!1361))
       ((_ to_fp 11 53) b_ack!1360)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1361)
                       ((_ to_fp 11 53) b_ack!1360))
               ((_ to_fp 11 53) b_ack!1360))
       ((_ to_fp 11 53) a_ack!1361)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1361)
                    ((_ to_fp 11 53) b_ack!1360))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1361)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1361)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3f0559a074362da9
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1361)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
