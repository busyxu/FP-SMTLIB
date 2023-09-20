(declare-fun d_ack!991 () (_ BitVec 64))
(declare-fun b_ack!990 () (_ BitVec 32))
(declare-fun a_ack!993 () (_ BitVec 64))
(declare-fun c_ack!992 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!991) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!990))
(assert (not (bvsle #x00000001 b_ack!990)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!993) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!992)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!992)
                                   ((_ to_fp 11 53) c_ack!992))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 c_ack!992)))

(check-sat)
(exit)
