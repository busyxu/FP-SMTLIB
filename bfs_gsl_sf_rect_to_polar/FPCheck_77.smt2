(declare-fun a_ack!260 () (_ BitVec 64))
(declare-fun b_ack!259 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!260) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!260))
            (fp.abs ((_ to_fp 11 53) b_ack!259)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!260))
       (fp.abs ((_ to_fp 11 53) b_ack!259))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!260))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!260))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3cc0000000000000)
                          a!1))
          ((_ to_fp 11 53) #x0010000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) a_ack!260))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (CF_atan2 b_ack!259 a_ack!260))))

(check-sat)
(exit)
