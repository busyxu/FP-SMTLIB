(declare-fun x1_ack!5889 () (_ BitVec 64))
(declare-fun x0_ack!5893 () (_ BitVec 64))
(declare-fun x2_ack!5890 () (_ BitVec 64))
(declare-fun b_ack!5892 () (_ BitVec 64))
(declare-fun a_ack!5891 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5893) ((_ to_fp 11 53) x1_ack!5889)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5889) ((_ to_fp 11 53) x2_ack!5890)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5889)
                       ((_ to_fp 11 53) x0_ack!5893))
               ((_ to_fp 11 53) x0_ack!5893))
       ((_ to_fp 11 53) x1_ack!5889)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5889)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5889)
                       ((_ to_fp 11 53) x0_ack!5893)))
       ((_ to_fp 11 53) x0_ack!5893)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5890)
                       ((_ to_fp 11 53) x1_ack!5889))
               ((_ to_fp 11 53) x1_ack!5889))
       ((_ to_fp 11 53) x2_ack!5890)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5890)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5890)
                       ((_ to_fp 11 53) x1_ack!5889)))
       ((_ to_fp 11 53) x1_ack!5889)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5889)
                    ((_ to_fp 11 53) x0_ack!5893))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5890)
                    ((_ to_fp 11 53) x1_ack!5889))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5891) ((_ to_fp 11 53) b_ack!5892))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5891) ((_ to_fp 11 53) x0_ack!5893))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5892) ((_ to_fp 11 53) x2_ack!5890))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5891) ((_ to_fp 11 53) b_ack!5892))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5891) ((_ to_fp 11 53) x0_ack!5893))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5891) ((_ to_fp 11 53) x1_ack!5889))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5892) ((_ to_fp 11 53) x0_ack!5893))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5892) ((_ to_fp 11 53) x1_ack!5889)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5889) ((_ to_fp 11 53) b_ack!5892))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5889)
                    ((_ to_fp 11 53) x0_ack!5893))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5891)
          ((_ to_fp 11 53) x0_ack!5893))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5891)
          ((_ to_fp 11 53) x0_ack!5893))))

(check-sat)
(exit)
