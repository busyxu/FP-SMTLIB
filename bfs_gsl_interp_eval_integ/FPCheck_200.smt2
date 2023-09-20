(declare-fun x1_ack!2349 () (_ BitVec 64))
(declare-fun x0_ack!2353 () (_ BitVec 64))
(declare-fun x2_ack!2350 () (_ BitVec 64))
(declare-fun b_ack!2352 () (_ BitVec 64))
(declare-fun a_ack!2351 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2353) ((_ to_fp 11 53) x1_ack!2349)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2349) ((_ to_fp 11 53) x2_ack!2350)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2349)
                       ((_ to_fp 11 53) x0_ack!2353))
               ((_ to_fp 11 53) x0_ack!2353))
       ((_ to_fp 11 53) x1_ack!2349)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2349)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2349)
                       ((_ to_fp 11 53) x0_ack!2353)))
       ((_ to_fp 11 53) x0_ack!2353)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2350)
                       ((_ to_fp 11 53) x1_ack!2349))
               ((_ to_fp 11 53) x1_ack!2349))
       ((_ to_fp 11 53) x2_ack!2350)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2350)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2350)
                       ((_ to_fp 11 53) x1_ack!2349)))
       ((_ to_fp 11 53) x1_ack!2349)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2349)
                    ((_ to_fp 11 53) x0_ack!2353))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2350)
                    ((_ to_fp 11 53) x1_ack!2349))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2351) ((_ to_fp 11 53) b_ack!2352))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2351) ((_ to_fp 11 53) x0_ack!2353))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2352) ((_ to_fp 11 53) x2_ack!2350))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2351) ((_ to_fp 11 53) b_ack!2352))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2351) ((_ to_fp 11 53) x0_ack!2353))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2351) ((_ to_fp 11 53) x1_ack!2349)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2349) ((_ to_fp 11 53) a_ack!2351))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2352) ((_ to_fp 11 53) x1_ack!2349))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2352) ((_ to_fp 11 53) x2_ack!2350))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2350)
                    ((_ to_fp 11 53) x1_ack!2349))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!2350)
          ((_ to_fp 11 53) x1_ack!2349))))

(check-sat)
(exit)
