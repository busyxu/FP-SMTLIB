(declare-fun x1_ack!7526 () (_ BitVec 64))
(declare-fun x0_ack!7530 () (_ BitVec 64))
(declare-fun x2_ack!7527 () (_ BitVec 64))
(declare-fun b_ack!7529 () (_ BitVec 64))
(declare-fun a_ack!7528 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7530) ((_ to_fp 11 53) x1_ack!7526)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7526) ((_ to_fp 11 53) x2_ack!7527)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7526)
                       ((_ to_fp 11 53) x0_ack!7530))
               ((_ to_fp 11 53) x0_ack!7530))
       ((_ to_fp 11 53) x1_ack!7526)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7526)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7526)
                       ((_ to_fp 11 53) x0_ack!7530)))
       ((_ to_fp 11 53) x0_ack!7530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7527)
                       ((_ to_fp 11 53) x1_ack!7526))
               ((_ to_fp 11 53) x1_ack!7526))
       ((_ to_fp 11 53) x2_ack!7527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7527)
                       ((_ to_fp 11 53) x1_ack!7526)))
       ((_ to_fp 11 53) x1_ack!7526)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7526)
                    ((_ to_fp 11 53) x0_ack!7530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7527)
                    ((_ to_fp 11 53) x1_ack!7526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7528) ((_ to_fp 11 53) b_ack!7529))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7528) ((_ to_fp 11 53) x0_ack!7530))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7529) ((_ to_fp 11 53) x2_ack!7527))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7528) ((_ to_fp 11 53) b_ack!7529))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7528) ((_ to_fp 11 53) x0_ack!7530))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7528) ((_ to_fp 11 53) x1_ack!7526))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7529) ((_ to_fp 11 53) x0_ack!7530))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7529) ((_ to_fp 11 53) x1_ack!7526)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7526) ((_ to_fp 11 53) b_ack!7529))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7526)
                    ((_ to_fp 11 53) x0_ack!7530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7527)
                    ((_ to_fp 11 53) x1_ack!7526))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7526)
          ((_ to_fp 11 53) x1_ack!7526))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7526)
          ((_ to_fp 11 53) x1_ack!7526))))

(check-sat)
(exit)
