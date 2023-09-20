(declare-fun a_ack!576 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!576)
               ((_ to_fp 11 53) a_ack!576))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!576)
                           ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5769e97db28853)
                         a!1)
                 ((_ to_fp 11 53) #xbf5769e97db28853))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!576)
                           ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5769e97db28853)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf5769e97db28853))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5769e97db28853)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!576)
                                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!576)
                                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!576)
                                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))
                           a!2))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!576)
            ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))
    a!3)))))

(check-sat)
(exit)
