(declare-fun x1_ack!447 () (_ BitVec 64))
(declare-fun x0_ack!450 () (_ BitVec 64))
(declare-fun x2_ack!448 () (_ BitVec 64))
(declare-fun xx_ack!449 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!450) ((_ to_fp 11 53) x1_ack!447)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!447) ((_ to_fp 11 53) x2_ack!448)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!447)
                       ((_ to_fp 11 53) x0_ack!450))
               ((_ to_fp 11 53) x0_ack!450))
       ((_ to_fp 11 53) x1_ack!447)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!447)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!447)
                       ((_ to_fp 11 53) x0_ack!450)))
       ((_ to_fp 11 53) x0_ack!450)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!448)
                       ((_ to_fp 11 53) x1_ack!447))
               ((_ to_fp 11 53) x1_ack!447))
       ((_ to_fp 11 53) x2_ack!448)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!448)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!448)
                       ((_ to_fp 11 53) x1_ack!447)))
       ((_ to_fp 11 53) x1_ack!447)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!447)
                    ((_ to_fp 11 53) x0_ack!450))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!448)
                    ((_ to_fp 11 53) x1_ack!447))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!449) ((_ to_fp 11 53) x0_ack!450))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!449) ((_ to_fp 11 53) x2_ack!448))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!449) ((_ to_fp 11 53) x0_ack!450))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!449) ((_ to_fp 11 53) x1_ack!447)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!447) ((_ to_fp 11 53) xx_ack!449))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!448 x1_ack!447))

(check-sat)
(exit)
