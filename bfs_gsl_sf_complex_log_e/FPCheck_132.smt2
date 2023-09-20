(declare-fun a_ack!386 () (_ BitVec 64))
(declare-fun b_ack!385 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!386))
       (fp.abs ((_ to_fp 11 53) b_ack!385))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!386))
            (fp.abs ((_ to_fp 11 53) b_ack!385)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!385)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!386))) a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!386))
          (fp.abs ((_ to_fp 11 53) b_ack!385)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!386))
          (fp.abs ((_ to_fp 11 53) b_ack!385)))))

(check-sat)
(exit)
