(declare-fun a_ack!276 () (_ BitVec 64))
(declare-fun b_ack!275 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!276)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!275) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!276))
       (fp.abs ((_ to_fp 11 53) b_ack!275))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!276))
            (fp.abs ((_ to_fp 11 53) b_ack!275)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!276))
          (fp.abs ((_ to_fp 11 53) b_ack!275)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!276))
          (fp.abs ((_ to_fp 11 53) b_ack!275)))))

(check-sat)
(exit)
