(declare-fun x1_ack!707 () (_ BitVec 64))
(declare-fun x0_ack!711 () (_ BitVec 64))
(declare-fun x2_ack!708 () (_ BitVec 64))
(declare-fun b_ack!710 () (_ BitVec 64))
(declare-fun a_ack!709 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!711) ((_ to_fp 11 53) x1_ack!707)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!707) ((_ to_fp 11 53) x2_ack!708)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!707)
                       ((_ to_fp 11 53) x0_ack!711))
               ((_ to_fp 11 53) x0_ack!711))
       ((_ to_fp 11 53) x1_ack!707)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!707)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!707)
                       ((_ to_fp 11 53) x0_ack!711)))
       ((_ to_fp 11 53) x0_ack!711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!708)
                       ((_ to_fp 11 53) x1_ack!707))
               ((_ to_fp 11 53) x1_ack!707))
       ((_ to_fp 11 53) x2_ack!708)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!708)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!708)
                       ((_ to_fp 11 53) x1_ack!707)))
       ((_ to_fp 11 53) x1_ack!707)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!707)
                    ((_ to_fp 11 53) x0_ack!711))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!708)
                    ((_ to_fp 11 53) x1_ack!707))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!709) ((_ to_fp 11 53) b_ack!710))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!709) ((_ to_fp 11 53) x0_ack!711))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!710) ((_ to_fp 11 53) x2_ack!708))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!709) ((_ to_fp 11 53) b_ack!710))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!709) ((_ to_fp 11 53) x0_ack!711))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!709) ((_ to_fp 11 53) x1_ack!707))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!710) ((_ to_fp 11 53) x0_ack!711)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!707)
                    ((_ to_fp 11 53) x0_ack!711))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
