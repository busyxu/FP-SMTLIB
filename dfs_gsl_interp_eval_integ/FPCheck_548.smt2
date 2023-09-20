(declare-fun x1_ack!6889 () (_ BitVec 64))
(declare-fun x0_ack!6893 () (_ BitVec 64))
(declare-fun x2_ack!6890 () (_ BitVec 64))
(declare-fun b_ack!6892 () (_ BitVec 64))
(declare-fun a_ack!6891 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6893) ((_ to_fp 11 53) x1_ack!6889)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6889) ((_ to_fp 11 53) x2_ack!6890)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6889)
                       ((_ to_fp 11 53) x0_ack!6893))
               ((_ to_fp 11 53) x0_ack!6893))
       ((_ to_fp 11 53) x1_ack!6889)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6889)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6889)
                       ((_ to_fp 11 53) x0_ack!6893)))
       ((_ to_fp 11 53) x0_ack!6893)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6890)
                       ((_ to_fp 11 53) x1_ack!6889))
               ((_ to_fp 11 53) x1_ack!6889))
       ((_ to_fp 11 53) x2_ack!6890)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6890)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6890)
                       ((_ to_fp 11 53) x1_ack!6889)))
       ((_ to_fp 11 53) x1_ack!6889)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6889)
                    ((_ to_fp 11 53) x0_ack!6893))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6890)
                    ((_ to_fp 11 53) x1_ack!6889))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6891) ((_ to_fp 11 53) b_ack!6892))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6891) ((_ to_fp 11 53) x0_ack!6893))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6892) ((_ to_fp 11 53) x2_ack!6890))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6891) ((_ to_fp 11 53) b_ack!6892))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6891) ((_ to_fp 11 53) x0_ack!6893))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6891) ((_ to_fp 11 53) x1_ack!6889)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6889) ((_ to_fp 11 53) a_ack!6891))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6892) ((_ to_fp 11 53) x1_ack!6889))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6892) ((_ to_fp 11 53) x2_ack!6890))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6890)
                    ((_ to_fp 11 53) x1_ack!6889))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6891)
          ((_ to_fp 11 53) x1_ack!6889))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6891)
          ((_ to_fp 11 53) x1_ack!6889))))

(check-sat)
(exit)
