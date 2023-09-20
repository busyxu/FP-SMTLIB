(declare-fun b_ack!511 () (_ BitVec 64))
(declare-fun c_ack!512 () (_ BitVec 64))
(declare-fun d_ack!513 () (_ BitVec 32))
(declare-fun a_ack!514 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!512) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!512)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!513))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!511) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) a_ack!514))
       ((_ to_fp 11 53) #x4083ec744754dd24)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!514)
                                  ((_ to_fp 11 53) b_ack!511)))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!511)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!514))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!512)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) c_ack!512))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!512)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!512)))
(assert (FPCHECK_FMUL_UNDERFLOW
  c_ack!512
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!512)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
