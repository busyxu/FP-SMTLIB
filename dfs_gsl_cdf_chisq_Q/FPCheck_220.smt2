(declare-fun x_ack!904 () (_ BitVec 64))
(declare-fun nu_ack!903 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!904) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!904)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!903)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!903)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!904)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!904)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!903)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!904)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!903)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!903)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!903)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!904)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4014000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fe2788cfc6fb619))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!904)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe2788cfc6fb619)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea51a6625307d3)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4018000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!1 a!1)
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fea51a6625307d3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fea51a6625307d3)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea51a6625307d3)
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 ((_ to_fp 11 53) #x4018000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #xbffc21c3e15d140a))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!904)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #xbffc21c3e15d140a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfa5555555555555)
                         a!1)
                 ((_ to_fp 11 53) #xbfa5555555555555))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffc21c3e15d140a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfa5555555555555)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbfa5555555555555))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fe72ad94dc1fec8))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!904)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe72ad94dc1fec8)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe72ad94dc1fec8)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40106e22afa35265)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x40106e22afa35265))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!904)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40106e22afa35265)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x40106e22afa35265)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0056b320b3ed28a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc001766553058d6b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbefa01a01a01a01a)
                                   a!1)
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0056b320b3ed28a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc001766553058d6b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffa63bd2f3ba53b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbefa01a01a01a01a)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbefa01a01a01a01a)
                                   a!1)
                           a!2))))
  (fp.eq a!5 a!3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffa63bd2f3ba53b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc0056b320b3ed28a)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc001766553058d6b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbffa63bd2f3ba53b)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbefa01a01a01a01a)
                                   a!1)
                           a!2)
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven a!4 a!3)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbefa01a01a01a01a)
                         a!1)
                 a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fefda591b88c85d)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3fefda591b88c85d))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) x_ack!904)
                         ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fefda591b88c85d)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!904)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fefda591b88c85d)))))
(assert (FPCHECK_FADD_OVERFLOW
  #xc00698442a97b713
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!904)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
