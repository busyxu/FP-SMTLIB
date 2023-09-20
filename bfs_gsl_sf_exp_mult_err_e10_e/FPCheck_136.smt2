(declare-fun c_ack!742 () (_ BitVec 64))
(declare-fun a_ack!743 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!742) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!743) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!743) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!742))
            ((_ to_fp 11 53) #x5fe9999999999999))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!743)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!742))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!743))
         (CF_log (fp.abs ((_ to_fp 11 53) c_ack!742))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!743)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!742))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!742))))))
  (fp.eq a!2 ((_ to_fp 11 53) a_ack!743)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!743)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!742))))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x40026bb1bbb55516)))

(check-sat)
(exit)
