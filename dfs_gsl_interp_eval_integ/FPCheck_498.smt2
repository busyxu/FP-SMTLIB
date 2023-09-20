(declare-fun x1_ack!6236 () (_ BitVec 64))
(declare-fun x0_ack!6240 () (_ BitVec 64))
(declare-fun x2_ack!6237 () (_ BitVec 64))
(declare-fun b_ack!6239 () (_ BitVec 64))
(declare-fun a_ack!6238 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6240) ((_ to_fp 11 53) x1_ack!6236)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6236) ((_ to_fp 11 53) x2_ack!6237)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6236)
                       ((_ to_fp 11 53) x0_ack!6240))
               ((_ to_fp 11 53) x0_ack!6240))
       ((_ to_fp 11 53) x1_ack!6236)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6236)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6236)
                       ((_ to_fp 11 53) x0_ack!6240)))
       ((_ to_fp 11 53) x0_ack!6240)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6237)
                       ((_ to_fp 11 53) x1_ack!6236))
               ((_ to_fp 11 53) x1_ack!6236))
       ((_ to_fp 11 53) x2_ack!6237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6237)
                       ((_ to_fp 11 53) x1_ack!6236)))
       ((_ to_fp 11 53) x1_ack!6236)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6236)
                    ((_ to_fp 11 53) x0_ack!6240))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6237)
                    ((_ to_fp 11 53) x1_ack!6236))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6238) ((_ to_fp 11 53) b_ack!6239))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6238) ((_ to_fp 11 53) x0_ack!6240))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6239) ((_ to_fp 11 53) x2_ack!6237))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6238) ((_ to_fp 11 53) b_ack!6239))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6238) ((_ to_fp 11 53) x0_ack!6240))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6238) ((_ to_fp 11 53) x1_ack!6236)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6236) ((_ to_fp 11 53) a_ack!6238))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6239) ((_ to_fp 11 53) x1_ack!6236))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6239) ((_ to_fp 11 53) x2_ack!6237))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6237)
                    ((_ to_fp 11 53) x1_ack!6236))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6237)
          ((_ to_fp 11 53) x1_ack!6236))))

(check-sat)
(exit)
