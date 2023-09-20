(declare-fun c_ack!1444 () (_ BitVec 64))
(declare-fun b_ack!1443 () (_ BitVec 64))
(declare-fun a_ack!1445 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!1445))
                           ((_ to_fp 11 53) a_ack!1445))
                   ((_ to_fp 11 53) a_ack!1445))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!1445))
                           ((_ to_fp 11 53) b_ack!1443)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!1444)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1445)
                                   ((_ to_fp 11 53) a_ack!1445))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1443)))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!1445))
  #x4008000000000000))

(check-sat)
(exit)
