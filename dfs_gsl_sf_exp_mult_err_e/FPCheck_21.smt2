(declare-fun c_ack!124 () (_ BitVec 64))
(declare-fun a_ack!126 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!123 () (_ BitVec 64))
(declare-fun d_ack!125 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!126) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!124))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!124))
       ((_ to_fp 11 53) #x2003333333333333)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) d_ack!125))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!124)
                                   ((_ to_fp 11 53) b_ack!123))))))
  (FPCHECK_FMUL_ACCURACY (CF_exp a_ack!126) a!1)))

(check-sat)
(exit)
