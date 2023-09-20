(declare-fun x1_ack!385 () (_ BitVec 64))
(declare-fun x0_ack!388 () (_ BitVec 64))
(declare-fun x2_ack!386 () (_ BitVec 64))
(declare-fun xx_ack!387 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!388) ((_ to_fp 11 53) x1_ack!385)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!385) ((_ to_fp 11 53) x2_ack!386)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!385)
                       ((_ to_fp 11 53) x0_ack!388))
               ((_ to_fp 11 53) x0_ack!388))
       ((_ to_fp 11 53) x1_ack!385)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!385)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!385)
                       ((_ to_fp 11 53) x0_ack!388)))
       ((_ to_fp 11 53) x0_ack!388)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!386)
                       ((_ to_fp 11 53) x1_ack!385))
               ((_ to_fp 11 53) x1_ack!385))
       ((_ to_fp 11 53) x2_ack!386)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!386)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!386)
                       ((_ to_fp 11 53) x1_ack!385)))
       ((_ to_fp 11 53) x1_ack!385)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!385)
                    ((_ to_fp 11 53) x0_ack!388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!386)
                    ((_ to_fp 11 53) x1_ack!385))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!387) ((_ to_fp 11 53) x0_ack!388))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!387) ((_ to_fp 11 53) x2_ack!386))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!387) ((_ to_fp 11 53) x0_ack!388))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!387) ((_ to_fp 11 53) x1_ack!385))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!385 x0_ack!388))

(check-sat)
(exit)
