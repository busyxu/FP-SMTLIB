(declare-fun x1_ack!6948 () (_ BitVec 64))
(declare-fun x0_ack!6952 () (_ BitVec 64))
(declare-fun x2_ack!6949 () (_ BitVec 64))
(declare-fun b_ack!6951 () (_ BitVec 64))
(declare-fun a_ack!6950 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6952) ((_ to_fp 11 53) x1_ack!6948)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6948) ((_ to_fp 11 53) x2_ack!6949)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6948)
                       ((_ to_fp 11 53) x0_ack!6952))
               ((_ to_fp 11 53) x0_ack!6952))
       ((_ to_fp 11 53) x1_ack!6948)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6948)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6948)
                       ((_ to_fp 11 53) x0_ack!6952)))
       ((_ to_fp 11 53) x0_ack!6952)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6949)
                       ((_ to_fp 11 53) x1_ack!6948))
               ((_ to_fp 11 53) x1_ack!6948))
       ((_ to_fp 11 53) x2_ack!6949)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6949)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6949)
                       ((_ to_fp 11 53) x1_ack!6948)))
       ((_ to_fp 11 53) x1_ack!6948)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6948)
                    ((_ to_fp 11 53) x0_ack!6952))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6949)
                    ((_ to_fp 11 53) x1_ack!6948))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6950) ((_ to_fp 11 53) b_ack!6951))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6950) ((_ to_fp 11 53) x0_ack!6952))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6951) ((_ to_fp 11 53) x2_ack!6949))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6950) ((_ to_fp 11 53) b_ack!6951))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6950) ((_ to_fp 11 53) x0_ack!6952))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6950) ((_ to_fp 11 53) x1_ack!6948))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6951) ((_ to_fp 11 53) x0_ack!6952))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6951) ((_ to_fp 11 53) x1_ack!6948)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6948) ((_ to_fp 11 53) b_ack!6951))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6948)
                    ((_ to_fp 11 53) x0_ack!6952))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6949)
                    ((_ to_fp 11 53) x1_ack!6948))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
