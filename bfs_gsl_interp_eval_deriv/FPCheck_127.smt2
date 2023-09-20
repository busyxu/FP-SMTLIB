(declare-fun x1_ack!1401 () (_ BitVec 64))
(declare-fun x0_ack!1404 () (_ BitVec 64))
(declare-fun x2_ack!1402 () (_ BitVec 64))
(declare-fun xx_ack!1403 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1404) ((_ to_fp 11 53) x1_ack!1401)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1401) ((_ to_fp 11 53) x2_ack!1402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1401)
                       ((_ to_fp 11 53) x0_ack!1404))
               ((_ to_fp 11 53) x0_ack!1404))
       ((_ to_fp 11 53) x1_ack!1401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1401)
                       ((_ to_fp 11 53) x0_ack!1404)))
       ((_ to_fp 11 53) x0_ack!1404)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1402)
                       ((_ to_fp 11 53) x1_ack!1401))
               ((_ to_fp 11 53) x1_ack!1401))
       ((_ to_fp 11 53) x2_ack!1402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1402)
                       ((_ to_fp 11 53) x1_ack!1401)))
       ((_ to_fp 11 53) x1_ack!1401)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1401)
                    ((_ to_fp 11 53) x0_ack!1404))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1402)
                    ((_ to_fp 11 53) x1_ack!1401))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1403) ((_ to_fp 11 53) x0_ack!1404))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1403) ((_ to_fp 11 53) x2_ack!1402))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1403) ((_ to_fp 11 53) x0_ack!1404))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1403) ((_ to_fp 11 53) x1_ack!1401)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1401) ((_ to_fp 11 53) xx_ack!1403))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1402)
               ((_ to_fp 11 53) x1_ack!1401))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1402)
          ((_ to_fp 11 53) x1_ack!1401))))

(check-sat)
(exit)
