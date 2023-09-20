(declare-fun x1_ack!2479 () (_ BitVec 64))
(declare-fun x0_ack!2483 () (_ BitVec 64))
(declare-fun x2_ack!2480 () (_ BitVec 64))
(declare-fun b_ack!2482 () (_ BitVec 64))
(declare-fun a_ack!2481 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2483) ((_ to_fp 11 53) x1_ack!2479)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2479) ((_ to_fp 11 53) x2_ack!2480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2479)
                       ((_ to_fp 11 53) x0_ack!2483))
               ((_ to_fp 11 53) x0_ack!2483))
       ((_ to_fp 11 53) x1_ack!2479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2479)
                       ((_ to_fp 11 53) x0_ack!2483)))
       ((_ to_fp 11 53) x0_ack!2483)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2480)
                       ((_ to_fp 11 53) x1_ack!2479))
               ((_ to_fp 11 53) x1_ack!2479))
       ((_ to_fp 11 53) x2_ack!2480)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2480)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2480)
                       ((_ to_fp 11 53) x1_ack!2479)))
       ((_ to_fp 11 53) x1_ack!2479)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2479)
                    ((_ to_fp 11 53) x0_ack!2483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2480)
                    ((_ to_fp 11 53) x1_ack!2479))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2481) ((_ to_fp 11 53) b_ack!2482))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2481) ((_ to_fp 11 53) x0_ack!2483))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2482) ((_ to_fp 11 53) x2_ack!2480))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2481) ((_ to_fp 11 53) b_ack!2482))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2481) ((_ to_fp 11 53) x0_ack!2483))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2481) ((_ to_fp 11 53) x1_ack!2479)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2479) ((_ to_fp 11 53) a_ack!2481))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2482) ((_ to_fp 11 53) x1_ack!2479))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2482) ((_ to_fp 11 53) x2_ack!2480))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2480)
                    ((_ to_fp 11 53) x1_ack!2479))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
