(declare-fun x1_ack!6959 () (_ BitVec 64))
(declare-fun x0_ack!6963 () (_ BitVec 64))
(declare-fun x2_ack!6960 () (_ BitVec 64))
(declare-fun b_ack!6962 () (_ BitVec 64))
(declare-fun a_ack!6961 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6963) ((_ to_fp 11 53) x1_ack!6959)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6959) ((_ to_fp 11 53) x2_ack!6960)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6959)
                       ((_ to_fp 11 53) x0_ack!6963))
               ((_ to_fp 11 53) x0_ack!6963))
       ((_ to_fp 11 53) x1_ack!6959)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6959)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6959)
                       ((_ to_fp 11 53) x0_ack!6963)))
       ((_ to_fp 11 53) x0_ack!6963)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6960)
                       ((_ to_fp 11 53) x1_ack!6959))
               ((_ to_fp 11 53) x1_ack!6959))
       ((_ to_fp 11 53) x2_ack!6960)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6960)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6960)
                       ((_ to_fp 11 53) x1_ack!6959)))
       ((_ to_fp 11 53) x1_ack!6959)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6959)
                    ((_ to_fp 11 53) x0_ack!6963))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6960)
                    ((_ to_fp 11 53) x1_ack!6959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6961) ((_ to_fp 11 53) b_ack!6962))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6961) ((_ to_fp 11 53) x0_ack!6963))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6962) ((_ to_fp 11 53) x2_ack!6960))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6961) ((_ to_fp 11 53) b_ack!6962))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6961) ((_ to_fp 11 53) x0_ack!6963))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6961) ((_ to_fp 11 53) x1_ack!6959)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6959) ((_ to_fp 11 53) a_ack!6961))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6962) ((_ to_fp 11 53) x1_ack!6959))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6962) ((_ to_fp 11 53) x2_ack!6960))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6960)
                    ((_ to_fp 11 53) x1_ack!6959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6961)
                  ((_ to_fp 11 53) x1_ack!6959))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6961)
                  ((_ to_fp 11 53) x1_ack!6959)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6962)
                  ((_ to_fp 11 53) x1_ack!6959))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6962)
                  ((_ to_fp 11 53) x1_ack!6959)))))

(check-sat)
(exit)
