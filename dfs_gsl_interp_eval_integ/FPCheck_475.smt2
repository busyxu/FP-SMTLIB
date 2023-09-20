(declare-fun x1_ack!5908 () (_ BitVec 64))
(declare-fun x0_ack!5914 () (_ BitVec 64))
(declare-fun x2_ack!5909 () (_ BitVec 64))
(declare-fun b_ack!5913 () (_ BitVec 64))
(declare-fun a_ack!5912 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!5910 () (_ BitVec 64))
(declare-fun y2_ack!5911 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5914) ((_ to_fp 11 53) x1_ack!5908)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5908) ((_ to_fp 11 53) x2_ack!5909)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5908)
                       ((_ to_fp 11 53) x0_ack!5914))
               ((_ to_fp 11 53) x0_ack!5914))
       ((_ to_fp 11 53) x1_ack!5908)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5908)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5908)
                       ((_ to_fp 11 53) x0_ack!5914)))
       ((_ to_fp 11 53) x0_ack!5914)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5909)
                       ((_ to_fp 11 53) x1_ack!5908))
               ((_ to_fp 11 53) x1_ack!5908))
       ((_ to_fp 11 53) x2_ack!5909)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5909)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5909)
                       ((_ to_fp 11 53) x1_ack!5908)))
       ((_ to_fp 11 53) x1_ack!5908)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5908)
                    ((_ to_fp 11 53) x0_ack!5914))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5909)
                    ((_ to_fp 11 53) x1_ack!5908))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5912) ((_ to_fp 11 53) b_ack!5913))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5912) ((_ to_fp 11 53) x0_ack!5914))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5913) ((_ to_fp 11 53) x2_ack!5909))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5912) ((_ to_fp 11 53) b_ack!5913))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5912) ((_ to_fp 11 53) x0_ack!5914))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5912) ((_ to_fp 11 53) x1_ack!5908)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5908) ((_ to_fp 11 53) a_ack!5912))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5913) ((_ to_fp 11 53) x1_ack!5908))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5913) ((_ to_fp 11 53) x2_ack!5909))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5909)
                    ((_ to_fp 11 53) x1_ack!5908))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!5911)
          ((_ to_fp 11 53) y1_ack!5910))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!5909)
          ((_ to_fp 11 53) x1_ack!5908))))

(check-sat)
(exit)
