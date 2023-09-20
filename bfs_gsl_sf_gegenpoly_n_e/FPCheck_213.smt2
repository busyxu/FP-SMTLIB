(declare-fun b_ack!1181 () (_ BitVec 64))
(declare-fun a_ack!1183 () (_ BitVec 32))
(declare-fun c_ack!1182 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1183 #x00000000)))
(assert (not (= #x00000000 a_ack!1183)))
(assert (not (= #x00000001 a_ack!1183)))
(assert (not (= #x00000002 a_ack!1183)))
(assert (not (= #x00000003 a_ack!1183)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1182) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1182) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1181) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1182))
                   ((_ to_fp 11 53) c_ack!1182))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs a!1))
    a!2))))

(check-sat)
(exit)
