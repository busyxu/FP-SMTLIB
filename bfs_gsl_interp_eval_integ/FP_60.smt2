(declare-fun x1_ack!3057 () (_ BitVec 64))
(declare-fun x0_ack!3061 () (_ BitVec 64))
(declare-fun x2_ack!3058 () (_ BitVec 64))
(declare-fun b_ack!3060 () (_ BitVec 64))
(declare-fun a_ack!3059 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3061) ((_ to_fp 11 53) x1_ack!3057)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3057) ((_ to_fp 11 53) x2_ack!3058)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3057)
                       ((_ to_fp 11 53) x0_ack!3061))
               ((_ to_fp 11 53) x0_ack!3061))
       ((_ to_fp 11 53) x1_ack!3057)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3057)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3057)
                       ((_ to_fp 11 53) x0_ack!3061)))
       ((_ to_fp 11 53) x0_ack!3061)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3058)
                       ((_ to_fp 11 53) x1_ack!3057))
               ((_ to_fp 11 53) x1_ack!3057))
       ((_ to_fp 11 53) x2_ack!3058)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3058)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3058)
                       ((_ to_fp 11 53) x1_ack!3057)))
       ((_ to_fp 11 53) x1_ack!3057)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3057)
                    ((_ to_fp 11 53) x0_ack!3061))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3058)
                    ((_ to_fp 11 53) x1_ack!3057))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3059) ((_ to_fp 11 53) b_ack!3060))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3059) ((_ to_fp 11 53) x0_ack!3061))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3060) ((_ to_fp 11 53) x2_ack!3058))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3059) ((_ to_fp 11 53) b_ack!3060))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3059) ((_ to_fp 11 53) x0_ack!3061))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3059) ((_ to_fp 11 53) x1_ack!3057)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3057) ((_ to_fp 11 53) a_ack!3059))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3060) ((_ to_fp 11 53) x1_ack!3057))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3060) ((_ to_fp 11 53) x2_ack!3058))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3058)
                    ((_ to_fp 11 53) x1_ack!3057))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
