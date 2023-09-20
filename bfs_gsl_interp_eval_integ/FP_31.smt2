(declare-fun x1_ack!827 () (_ BitVec 64))
(declare-fun x0_ack!831 () (_ BitVec 64))
(declare-fun x2_ack!828 () (_ BitVec 64))
(declare-fun b_ack!830 () (_ BitVec 64))
(declare-fun a_ack!829 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!831) ((_ to_fp 11 53) x1_ack!827)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!827) ((_ to_fp 11 53) x2_ack!828)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!827)
                       ((_ to_fp 11 53) x0_ack!831))
               ((_ to_fp 11 53) x0_ack!831))
       ((_ to_fp 11 53) x1_ack!827)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!827)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!827)
                       ((_ to_fp 11 53) x0_ack!831)))
       ((_ to_fp 11 53) x0_ack!831)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!828)
                       ((_ to_fp 11 53) x1_ack!827))
               ((_ to_fp 11 53) x1_ack!827))
       ((_ to_fp 11 53) x2_ack!828)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!828)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!828)
                       ((_ to_fp 11 53) x1_ack!827)))
       ((_ to_fp 11 53) x1_ack!827)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!827)
                    ((_ to_fp 11 53) x0_ack!831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!828)
                    ((_ to_fp 11 53) x1_ack!827))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!829) ((_ to_fp 11 53) b_ack!830))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!829) ((_ to_fp 11 53) x0_ack!831))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!830) ((_ to_fp 11 53) x2_ack!828))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!829) ((_ to_fp 11 53) b_ack!830))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!829) ((_ to_fp 11 53) x0_ack!831))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!829) ((_ to_fp 11 53) x1_ack!827))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!830) ((_ to_fp 11 53) x0_ack!831)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!827)
                    ((_ to_fp 11 53) x0_ack!831))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
