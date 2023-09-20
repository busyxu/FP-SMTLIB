(declare-fun x1_ack!401 () (_ BitVec 64))
(declare-fun x0_ack!404 () (_ BitVec 64))
(declare-fun x2_ack!402 () (_ BitVec 64))
(declare-fun xx_ack!403 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!404) ((_ to_fp 11 53) x1_ack!401)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!401) ((_ to_fp 11 53) x2_ack!402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!401)
                       ((_ to_fp 11 53) x0_ack!404))
               ((_ to_fp 11 53) x0_ack!404))
       ((_ to_fp 11 53) x1_ack!401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!401)
                       ((_ to_fp 11 53) x0_ack!404)))
       ((_ to_fp 11 53) x0_ack!404)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!402)
                       ((_ to_fp 11 53) x1_ack!401))
               ((_ to_fp 11 53) x1_ack!401))
       ((_ to_fp 11 53) x2_ack!402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!402)
                       ((_ to_fp 11 53) x1_ack!401)))
       ((_ to_fp 11 53) x1_ack!401)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!401)
                    ((_ to_fp 11 53) x0_ack!404))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!402)
                    ((_ to_fp 11 53) x1_ack!401))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!403) ((_ to_fp 11 53) x0_ack!404))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!403) ((_ to_fp 11 53) x2_ack!402))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!403) ((_ to_fp 11 53) x0_ack!404))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!403) ((_ to_fp 11 53) x1_ack!401)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!401) ((_ to_fp 11 53) xx_ack!403))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!402 x1_ack!401))

(check-sat)
(exit)
