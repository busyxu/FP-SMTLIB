(declare-fun x1_ack!962 () (_ BitVec 64))
(declare-fun x0_ack!966 () (_ BitVec 64))
(declare-fun x2_ack!963 () (_ BitVec 64))
(declare-fun b_ack!965 () (_ BitVec 64))
(declare-fun a_ack!964 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!966) ((_ to_fp 11 53) x1_ack!962)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!962) ((_ to_fp 11 53) x2_ack!963)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!962)
                       ((_ to_fp 11 53) x0_ack!966))
               ((_ to_fp 11 53) x0_ack!966))
       ((_ to_fp 11 53) x1_ack!962)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!962)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!962)
                       ((_ to_fp 11 53) x0_ack!966)))
       ((_ to_fp 11 53) x0_ack!966)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!963)
                       ((_ to_fp 11 53) x1_ack!962))
               ((_ to_fp 11 53) x1_ack!962))
       ((_ to_fp 11 53) x2_ack!963)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!963)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!963)
                       ((_ to_fp 11 53) x1_ack!962)))
       ((_ to_fp 11 53) x1_ack!962)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!962)
                    ((_ to_fp 11 53) x0_ack!966))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!963)
                    ((_ to_fp 11 53) x1_ack!962))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!964) ((_ to_fp 11 53) b_ack!965))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!964) ((_ to_fp 11 53) x0_ack!966))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!965) ((_ to_fp 11 53) x2_ack!963))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!964) ((_ to_fp 11 53) b_ack!965))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!964) ((_ to_fp 11 53) x0_ack!966))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!964) ((_ to_fp 11 53) x1_ack!962))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!965) ((_ to_fp 11 53) x0_ack!966))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!965) ((_ to_fp 11 53) x1_ack!962)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!962) ((_ to_fp 11 53) b_ack!965))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!962)
                    ((_ to_fp 11 53) x0_ack!966))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!964)
          ((_ to_fp 11 53) x0_ack!966))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!962)
          ((_ to_fp 11 53) x0_ack!966))))

(check-sat)
(exit)
