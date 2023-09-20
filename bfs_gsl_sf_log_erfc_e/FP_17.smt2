(declare-fun a_ack!162 () (_ BitVec 64))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!162)
               ((_ to_fp 11 53) a_ack!162))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!162)
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
                           ((_ to_fp 11 53) a_ack!162)
                           ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5769e97db28853)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf5769e97db28853))))

(check-sat)
(exit)
