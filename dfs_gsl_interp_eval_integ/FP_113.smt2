(declare-fun x1_ack!6909 () (_ BitVec 64))
(declare-fun x0_ack!6913 () (_ BitVec 64))
(declare-fun x2_ack!6910 () (_ BitVec 64))
(declare-fun b_ack!6912 () (_ BitVec 64))
(declare-fun a_ack!6911 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6913) ((_ to_fp 11 53) x1_ack!6909)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6909) ((_ to_fp 11 53) x2_ack!6910)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6909)
                       ((_ to_fp 11 53) x0_ack!6913))
               ((_ to_fp 11 53) x0_ack!6913))
       ((_ to_fp 11 53) x1_ack!6909)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6909)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6909)
                       ((_ to_fp 11 53) x0_ack!6913)))
       ((_ to_fp 11 53) x0_ack!6913)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6910)
                       ((_ to_fp 11 53) x1_ack!6909))
               ((_ to_fp 11 53) x1_ack!6909))
       ((_ to_fp 11 53) x2_ack!6910)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6910)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6910)
                       ((_ to_fp 11 53) x1_ack!6909)))
       ((_ to_fp 11 53) x1_ack!6909)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6909)
                    ((_ to_fp 11 53) x0_ack!6913))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6910)
                    ((_ to_fp 11 53) x1_ack!6909))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6911) ((_ to_fp 11 53) b_ack!6912))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6911) ((_ to_fp 11 53) x0_ack!6913))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6912) ((_ to_fp 11 53) x2_ack!6910))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6911) ((_ to_fp 11 53) b_ack!6912))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6911) ((_ to_fp 11 53) x0_ack!6913))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6911) ((_ to_fp 11 53) x1_ack!6909)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6909) ((_ to_fp 11 53) a_ack!6911))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6912) ((_ to_fp 11 53) x1_ack!6909))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6912) ((_ to_fp 11 53) x2_ack!6910))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6910)
                    ((_ to_fp 11 53) x1_ack!6909))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
