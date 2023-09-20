(declare-fun x1_ack!5869 () (_ BitVec 64))
(declare-fun x0_ack!5873 () (_ BitVec 64))
(declare-fun x2_ack!5870 () (_ BitVec 64))
(declare-fun b_ack!5872 () (_ BitVec 64))
(declare-fun a_ack!5871 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5873) ((_ to_fp 11 53) x1_ack!5869)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5869) ((_ to_fp 11 53) x2_ack!5870)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5869)
                       ((_ to_fp 11 53) x0_ack!5873))
               ((_ to_fp 11 53) x0_ack!5873))
       ((_ to_fp 11 53) x1_ack!5869)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5869)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5869)
                       ((_ to_fp 11 53) x0_ack!5873)))
       ((_ to_fp 11 53) x0_ack!5873)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5870)
                       ((_ to_fp 11 53) x1_ack!5869))
               ((_ to_fp 11 53) x1_ack!5869))
       ((_ to_fp 11 53) x2_ack!5870)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5870)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5870)
                       ((_ to_fp 11 53) x1_ack!5869)))
       ((_ to_fp 11 53) x1_ack!5869)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5869)
                    ((_ to_fp 11 53) x0_ack!5873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5870)
                    ((_ to_fp 11 53) x1_ack!5869))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5871) ((_ to_fp 11 53) b_ack!5872))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5871) ((_ to_fp 11 53) x0_ack!5873))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5872) ((_ to_fp 11 53) x2_ack!5870))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5871) ((_ to_fp 11 53) b_ack!5872))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5871) ((_ to_fp 11 53) x0_ack!5873))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5871) ((_ to_fp 11 53) x1_ack!5869))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5872) ((_ to_fp 11 53) x0_ack!5873))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5872) ((_ to_fp 11 53) x1_ack!5869)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5869) ((_ to_fp 11 53) b_ack!5872))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5869)
                    ((_ to_fp 11 53) x0_ack!5873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5871)
          ((_ to_fp 11 53) x0_ack!5873))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5871)
          ((_ to_fp 11 53) x0_ack!5873))))

(check-sat)
(exit)
