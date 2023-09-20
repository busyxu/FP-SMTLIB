(declare-fun d_ack!143 () (_ BitVec 64))
(declare-fun b_ack!142 () (_ BitVec 32))
(declare-fun a_ack!145 () (_ BitVec 64))
(declare-fun c_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!143) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!143) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!145)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!142))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!145)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!142))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!142))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!143) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!143) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!144))
       ((_ to_fp 11 53) #x4083ec744754dd24)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!144)
                       ((_ to_fp 11 53) d_ack!143)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!145)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!142))
  #x3fe0000000000000))

(check-sat)
(exit)
