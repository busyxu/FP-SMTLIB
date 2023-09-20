(declare-fun x1_ack!3325 () (_ BitVec 64))
(declare-fun x0_ack!3329 () (_ BitVec 64))
(declare-fun x2_ack!3326 () (_ BitVec 64))
(declare-fun b_ack!3328 () (_ BitVec 64))
(declare-fun a_ack!3327 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3329) ((_ to_fp 11 53) x1_ack!3325)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3325) ((_ to_fp 11 53) x2_ack!3326)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3325)
                       ((_ to_fp 11 53) x0_ack!3329))
               ((_ to_fp 11 53) x0_ack!3329))
       ((_ to_fp 11 53) x1_ack!3325)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3325)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3325)
                       ((_ to_fp 11 53) x0_ack!3329)))
       ((_ to_fp 11 53) x0_ack!3329)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3326)
                       ((_ to_fp 11 53) x1_ack!3325))
               ((_ to_fp 11 53) x1_ack!3325))
       ((_ to_fp 11 53) x2_ack!3326)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3326)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3326)
                       ((_ to_fp 11 53) x1_ack!3325)))
       ((_ to_fp 11 53) x1_ack!3325)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3325)
                    ((_ to_fp 11 53) x0_ack!3329))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3326)
                    ((_ to_fp 11 53) x1_ack!3325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3327) ((_ to_fp 11 53) b_ack!3328))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3327) ((_ to_fp 11 53) x0_ack!3329))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3328) ((_ to_fp 11 53) x2_ack!3326))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3327) ((_ to_fp 11 53) b_ack!3328))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3327) ((_ to_fp 11 53) x0_ack!3329))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3327) ((_ to_fp 11 53) x1_ack!3325))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3328) ((_ to_fp 11 53) x0_ack!3329))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3328) ((_ to_fp 11 53) x1_ack!3325))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3325)
                    ((_ to_fp 11 53) x0_ack!3329))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
