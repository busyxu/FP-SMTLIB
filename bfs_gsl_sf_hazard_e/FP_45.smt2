(declare-fun a_ack!460 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!460) ((_ to_fp 11 53) #x4039000000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!460)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!460)
                                  ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
                  ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
  (not a!1)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!460)
               ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
       ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!460)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3fe20dd750429b62))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff467e6dad8642a))
                 a!1)
         ((_ to_fp 11 53) #x3ff467e6dad8642a))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!460)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3fe20dd750429b62))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff467e6dad8642a))
                 ((_ to_fp 11 53) #x3ff467e6dad8642a))
         a!1)))

(check-sat)
(exit)
