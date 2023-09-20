(declare-fun x1_ack!1252 () (_ BitVec 64))
(declare-fun x0_ack!1257 () (_ BitVec 64))
(declare-fun x2_ack!1253 () (_ BitVec 64))
(declare-fun xx_ack!1256 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1254 () (_ BitVec 64))
(declare-fun y1_ack!1255 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1257) ((_ to_fp 11 53) x1_ack!1252)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1252) ((_ to_fp 11 53) x2_ack!1253)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1252)
                       ((_ to_fp 11 53) x0_ack!1257))
               ((_ to_fp 11 53) x0_ack!1257))
       ((_ to_fp 11 53) x1_ack!1252)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1252)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1252)
                       ((_ to_fp 11 53) x0_ack!1257)))
       ((_ to_fp 11 53) x0_ack!1257)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1253)
                       ((_ to_fp 11 53) x1_ack!1252))
               ((_ to_fp 11 53) x1_ack!1252))
       ((_ to_fp 11 53) x2_ack!1253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1253)
                       ((_ to_fp 11 53) x1_ack!1252)))
       ((_ to_fp 11 53) x1_ack!1252)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1252)
                    ((_ to_fp 11 53) x0_ack!1257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1253)
                    ((_ to_fp 11 53) x1_ack!1252))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1256) ((_ to_fp 11 53) x0_ack!1257))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1256) ((_ to_fp 11 53) x2_ack!1253))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1256) ((_ to_fp 11 53) x0_ack!1257))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1256) ((_ to_fp 11 53) x1_ack!1252))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1252)
               ((_ to_fp 11 53) x0_ack!1257))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!1255)
          ((_ to_fp 11 53) y0_ack!1254))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1252)
          ((_ to_fp 11 53) x0_ack!1257))))

(check-sat)
(exit)
