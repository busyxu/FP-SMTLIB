(declare-fun x1_ack!3415 () (_ BitVec 64))
(declare-fun x0_ack!3419 () (_ BitVec 64))
(declare-fun x2_ack!3416 () (_ BitVec 64))
(declare-fun b_ack!3418 () (_ BitVec 64))
(declare-fun a_ack!3417 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3419) ((_ to_fp 11 53) x1_ack!3415)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3415) ((_ to_fp 11 53) x2_ack!3416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3415)
                       ((_ to_fp 11 53) x0_ack!3419))
               ((_ to_fp 11 53) x0_ack!3419))
       ((_ to_fp 11 53) x1_ack!3415)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3415)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3415)
                       ((_ to_fp 11 53) x0_ack!3419)))
       ((_ to_fp 11 53) x0_ack!3419)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3416)
                       ((_ to_fp 11 53) x1_ack!3415))
               ((_ to_fp 11 53) x1_ack!3415))
       ((_ to_fp 11 53) x2_ack!3416)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3416)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3416)
                       ((_ to_fp 11 53) x1_ack!3415)))
       ((_ to_fp 11 53) x1_ack!3415)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3415)
                    ((_ to_fp 11 53) x0_ack!3419))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3416)
                    ((_ to_fp 11 53) x1_ack!3415))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3417) ((_ to_fp 11 53) b_ack!3418))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3417) ((_ to_fp 11 53) x0_ack!3419))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3418) ((_ to_fp 11 53) x2_ack!3416))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3417) ((_ to_fp 11 53) b_ack!3418))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3417) ((_ to_fp 11 53) x0_ack!3419))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3417) ((_ to_fp 11 53) x1_ack!3415))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3418) ((_ to_fp 11 53) x0_ack!3419))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3418) ((_ to_fp 11 53) x1_ack!3415))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3415)
                    ((_ to_fp 11 53) x0_ack!3419))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
