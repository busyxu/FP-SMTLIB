(declare-fun c_ack!142 () (_ BitVec 64))
(declare-fun d_ack!143 () (_ BitVec 64))
(declare-fun a_ack!144 () (_ BitVec 64))
(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!143))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!143))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!144))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!141))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!144)
                  ((_ to_fp 11 53) #x0000000000000000))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!144)
                  ((_ to_fp 11 53) #x0000000000000000)))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!141)
          ((_ to_fp 11 53) b_ack!141))))

(check-sat)
(exit)
