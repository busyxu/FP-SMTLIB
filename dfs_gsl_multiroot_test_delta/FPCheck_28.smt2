(declare-fun x0_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!50)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!50)
          ((_ to_fp 11 53) #x3e50000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!50)
          ((_ to_fp 11 53) #x3e50000000000000))))

(check-sat)
(exit)
