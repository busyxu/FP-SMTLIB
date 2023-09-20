(declare-fun x1_ack!6180 () (_ BitVec 64))
(declare-fun x0_ack!6184 () (_ BitVec 64))
(declare-fun x2_ack!6181 () (_ BitVec 64))
(declare-fun b_ack!6183 () (_ BitVec 64))
(declare-fun a_ack!6182 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6184) ((_ to_fp 11 53) x1_ack!6180)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6180) ((_ to_fp 11 53) x2_ack!6181)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6180)
                       ((_ to_fp 11 53) x0_ack!6184))
               ((_ to_fp 11 53) x0_ack!6184))
       ((_ to_fp 11 53) x1_ack!6180)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6180)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6180)
                       ((_ to_fp 11 53) x0_ack!6184)))
       ((_ to_fp 11 53) x0_ack!6184)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6181)
                       ((_ to_fp 11 53) x1_ack!6180))
               ((_ to_fp 11 53) x1_ack!6180))
       ((_ to_fp 11 53) x2_ack!6181)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6181)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6181)
                       ((_ to_fp 11 53) x1_ack!6180)))
       ((_ to_fp 11 53) x1_ack!6180)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6180)
                    ((_ to_fp 11 53) x0_ack!6184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6181)
                    ((_ to_fp 11 53) x1_ack!6180))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6182) ((_ to_fp 11 53) b_ack!6183))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6182) ((_ to_fp 11 53) x0_ack!6184))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6183) ((_ to_fp 11 53) x2_ack!6181))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6182) ((_ to_fp 11 53) b_ack!6183))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6182) ((_ to_fp 11 53) x0_ack!6184))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6182) ((_ to_fp 11 53) x1_ack!6180))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6183) ((_ to_fp 11 53) x0_ack!6184))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6183) ((_ to_fp 11 53) x1_ack!6180)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6180) ((_ to_fp 11 53) b_ack!6183))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6180)
                    ((_ to_fp 11 53) x0_ack!6184))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6182)
                  ((_ to_fp 11 53) x0_ack!6184))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6182)
                  ((_ to_fp 11 53) x0_ack!6184)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6180)
                  ((_ to_fp 11 53) x0_ack!6184))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6180)
                  ((_ to_fp 11 53) x0_ack!6184)))))

(check-sat)
(exit)
