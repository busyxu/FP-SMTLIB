(declare-fun x1_ack!6506 () (_ BitVec 64))
(declare-fun x0_ack!6510 () (_ BitVec 64))
(declare-fun x2_ack!6507 () (_ BitVec 64))
(declare-fun b_ack!6509 () (_ BitVec 64))
(declare-fun a_ack!6508 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6510) ((_ to_fp 11 53) x1_ack!6506)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6506) ((_ to_fp 11 53) x2_ack!6507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6506)
                       ((_ to_fp 11 53) x0_ack!6510))
               ((_ to_fp 11 53) x0_ack!6510))
       ((_ to_fp 11 53) x1_ack!6506)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6506)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6506)
                       ((_ to_fp 11 53) x0_ack!6510)))
       ((_ to_fp 11 53) x0_ack!6510)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6507)
                       ((_ to_fp 11 53) x1_ack!6506))
               ((_ to_fp 11 53) x1_ack!6506))
       ((_ to_fp 11 53) x2_ack!6507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6507)
                       ((_ to_fp 11 53) x1_ack!6506)))
       ((_ to_fp 11 53) x1_ack!6506)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6506)
                    ((_ to_fp 11 53) x0_ack!6510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6507)
                    ((_ to_fp 11 53) x1_ack!6506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6508) ((_ to_fp 11 53) b_ack!6509))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6508) ((_ to_fp 11 53) x0_ack!6510))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6509) ((_ to_fp 11 53) x2_ack!6507))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6508) ((_ to_fp 11 53) b_ack!6509))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6508) ((_ to_fp 11 53) x0_ack!6510))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6508) ((_ to_fp 11 53) x1_ack!6506))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6509) ((_ to_fp 11 53) x0_ack!6510))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6509) ((_ to_fp 11 53) x1_ack!6506)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6506) ((_ to_fp 11 53) b_ack!6509))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6506)
                    ((_ to_fp 11 53) x0_ack!6510))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
