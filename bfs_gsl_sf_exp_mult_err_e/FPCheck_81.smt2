(declare-fun c_ack!349 () (_ BitVec 64))
(declare-fun a_ack!351 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!348 () (_ BitVec 64))
(declare-fun d_ack!350 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!351) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!351) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!349))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!349))
       ((_ to_fp 11 53) #x2003333333333333)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) d_ack!350))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!349)
                                   ((_ to_fp 11 53) b_ack!348)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!349)
                                   (CF_exp a_ack!351))))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven (CF_exp a_ack!351) a!1)
    a!2)))

(check-sat)
(exit)
