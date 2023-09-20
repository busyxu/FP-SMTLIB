(declare-fun x1_ack!413 () (_ BitVec 64))
(declare-fun x0_ack!416 () (_ BitVec 64))
(declare-fun x2_ack!414 () (_ BitVec 64))
(declare-fun xx_ack!415 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!416) ((_ to_fp 11 53) x1_ack!413)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!413) ((_ to_fp 11 53) x2_ack!414)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!413)
                       ((_ to_fp 11 53) x0_ack!416))
               ((_ to_fp 11 53) x0_ack!416))
       ((_ to_fp 11 53) x1_ack!413)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!413)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!413)
                       ((_ to_fp 11 53) x0_ack!416)))
       ((_ to_fp 11 53) x0_ack!416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!414)
                       ((_ to_fp 11 53) x1_ack!413))
               ((_ to_fp 11 53) x1_ack!413))
       ((_ to_fp 11 53) x2_ack!414)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!414)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!414)
                       ((_ to_fp 11 53) x1_ack!413)))
       ((_ to_fp 11 53) x1_ack!413)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!413)
                    ((_ to_fp 11 53) x0_ack!416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!414)
                    ((_ to_fp 11 53) x1_ack!413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!415) ((_ to_fp 11 53) x0_ack!416))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!415) ((_ to_fp 11 53) x2_ack!414))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!415) ((_ to_fp 11 53) x0_ack!416))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!415) ((_ to_fp 11 53) x1_ack!413)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!413) ((_ to_fp 11 53) xx_ack!415))))

(check-sat)
(exit)
