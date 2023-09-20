(declare-fun x1_ack!2107 () (_ BitVec 64))
(declare-fun x0_ack!2111 () (_ BitVec 64))
(declare-fun x2_ack!2108 () (_ BitVec 64))
(declare-fun b_ack!2110 () (_ BitVec 64))
(declare-fun a_ack!2109 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2111) ((_ to_fp 11 53) x1_ack!2107)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2107) ((_ to_fp 11 53) x2_ack!2108)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2107)
                       ((_ to_fp 11 53) x0_ack!2111))
               ((_ to_fp 11 53) x0_ack!2111))
       ((_ to_fp 11 53) x1_ack!2107)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2107)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2107)
                       ((_ to_fp 11 53) x0_ack!2111)))
       ((_ to_fp 11 53) x0_ack!2111)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2108)
                       ((_ to_fp 11 53) x1_ack!2107))
               ((_ to_fp 11 53) x1_ack!2107))
       ((_ to_fp 11 53) x2_ack!2108)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2108)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2108)
                       ((_ to_fp 11 53) x1_ack!2107)))
       ((_ to_fp 11 53) x1_ack!2107)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2107)
                    ((_ to_fp 11 53) x0_ack!2111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2108)
                    ((_ to_fp 11 53) x1_ack!2107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2109) ((_ to_fp 11 53) b_ack!2110))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2109) ((_ to_fp 11 53) x0_ack!2111))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2110) ((_ to_fp 11 53) x2_ack!2108))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2109) ((_ to_fp 11 53) b_ack!2110))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2109) ((_ to_fp 11 53) x0_ack!2111))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2109) ((_ to_fp 11 53) x1_ack!2107))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2110) ((_ to_fp 11 53) x0_ack!2111))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2110) ((_ to_fp 11 53) x1_ack!2107)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2107) ((_ to_fp 11 53) b_ack!2110))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2107)
                    ((_ to_fp 11 53) x0_ack!2111))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2108)
                    ((_ to_fp 11 53) x1_ack!2107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!2108)
          ((_ to_fp 11 53) x1_ack!2107))))

(check-sat)
(exit)
