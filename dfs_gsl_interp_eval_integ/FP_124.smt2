(declare-fun x1_ack!7479 () (_ BitVec 64))
(declare-fun x0_ack!7483 () (_ BitVec 64))
(declare-fun x2_ack!7480 () (_ BitVec 64))
(declare-fun b_ack!7482 () (_ BitVec 64))
(declare-fun a_ack!7481 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7483) ((_ to_fp 11 53) x1_ack!7479)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7479) ((_ to_fp 11 53) x2_ack!7480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7479)
                       ((_ to_fp 11 53) x0_ack!7483))
               ((_ to_fp 11 53) x0_ack!7483))
       ((_ to_fp 11 53) x1_ack!7479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7479)
                       ((_ to_fp 11 53) x0_ack!7483)))
       ((_ to_fp 11 53) x0_ack!7483)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7480)
                       ((_ to_fp 11 53) x1_ack!7479))
               ((_ to_fp 11 53) x1_ack!7479))
       ((_ to_fp 11 53) x2_ack!7480)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7480)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7480)
                       ((_ to_fp 11 53) x1_ack!7479)))
       ((_ to_fp 11 53) x1_ack!7479)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7479)
                    ((_ to_fp 11 53) x0_ack!7483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7480)
                    ((_ to_fp 11 53) x1_ack!7479))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7481) ((_ to_fp 11 53) b_ack!7482))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7481) ((_ to_fp 11 53) x0_ack!7483))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7482) ((_ to_fp 11 53) x2_ack!7480))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7481) ((_ to_fp 11 53) b_ack!7482))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7481) ((_ to_fp 11 53) x0_ack!7483))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7481) ((_ to_fp 11 53) x1_ack!7479))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7482) ((_ to_fp 11 53) x0_ack!7483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7479)
                    ((_ to_fp 11 53) x0_ack!7483))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
