(declare-fun x1_ack!5882 () (_ BitVec 64))
(declare-fun x0_ack!5888 () (_ BitVec 64))
(declare-fun x2_ack!5883 () (_ BitVec 64))
(declare-fun b_ack!5887 () (_ BitVec 64))
(declare-fun a_ack!5886 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!5884 () (_ BitVec 64))
(declare-fun y2_ack!5885 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5888) ((_ to_fp 11 53) x1_ack!5882)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5882) ((_ to_fp 11 53) x2_ack!5883)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5882)
                       ((_ to_fp 11 53) x0_ack!5888))
               ((_ to_fp 11 53) x0_ack!5888))
       ((_ to_fp 11 53) x1_ack!5882)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5882)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5882)
                       ((_ to_fp 11 53) x0_ack!5888)))
       ((_ to_fp 11 53) x0_ack!5888)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5883)
                       ((_ to_fp 11 53) x1_ack!5882))
               ((_ to_fp 11 53) x1_ack!5882))
       ((_ to_fp 11 53) x2_ack!5883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5883)
                       ((_ to_fp 11 53) x1_ack!5882)))
       ((_ to_fp 11 53) x1_ack!5882)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5882)
                    ((_ to_fp 11 53) x0_ack!5888))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5883)
                    ((_ to_fp 11 53) x1_ack!5882))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5886) ((_ to_fp 11 53) b_ack!5887))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5886) ((_ to_fp 11 53) x0_ack!5888))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5887) ((_ to_fp 11 53) x2_ack!5883))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5886) ((_ to_fp 11 53) b_ack!5887))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5886) ((_ to_fp 11 53) x0_ack!5888))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5886) ((_ to_fp 11 53) x1_ack!5882)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5882) ((_ to_fp 11 53) a_ack!5886))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5887) ((_ to_fp 11 53) x1_ack!5882))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5887) ((_ to_fp 11 53) x2_ack!5883))))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!5885 y1_ack!5884))

(check-sat)
(exit)
