(declare-fun x1_ack!4670 () (_ BitVec 64))
(declare-fun x0_ack!4674 () (_ BitVec 64))
(declare-fun x2_ack!4671 () (_ BitVec 64))
(declare-fun b_ack!4673 () (_ BitVec 64))
(declare-fun a_ack!4672 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4674) ((_ to_fp 11 53) x1_ack!4670)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4670) ((_ to_fp 11 53) x2_ack!4671)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4670)
                       ((_ to_fp 11 53) x0_ack!4674))
               ((_ to_fp 11 53) x0_ack!4674))
       ((_ to_fp 11 53) x1_ack!4670)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4670)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4670)
                       ((_ to_fp 11 53) x0_ack!4674)))
       ((_ to_fp 11 53) x0_ack!4674)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4671)
                       ((_ to_fp 11 53) x1_ack!4670))
               ((_ to_fp 11 53) x1_ack!4670))
       ((_ to_fp 11 53) x2_ack!4671)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4671)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4671)
                       ((_ to_fp 11 53) x1_ack!4670)))
       ((_ to_fp 11 53) x1_ack!4670)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4670)
                    ((_ to_fp 11 53) x0_ack!4674))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4671)
                    ((_ to_fp 11 53) x1_ack!4670))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4672) ((_ to_fp 11 53) b_ack!4673))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4672) ((_ to_fp 11 53) x0_ack!4674))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4673) ((_ to_fp 11 53) x2_ack!4671))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4672) ((_ to_fp 11 53) b_ack!4673))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4672) ((_ to_fp 11 53) x0_ack!4674))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4672) ((_ to_fp 11 53) x1_ack!4670)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4670) ((_ to_fp 11 53) a_ack!4672))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4673) ((_ to_fp 11 53) x1_ack!4670))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4673) ((_ to_fp 11 53) x2_ack!4671)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4671)
                    ((_ to_fp 11 53) x1_ack!4670))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
